import java.io.*;

void setup()
{
  size(500, 500);
  cellSize = width / (float) size;
  randomise();  
}

int countLiveCellsAround(int row, int col)
{
  int count = 0;
  
  if (row > 0 && col > 0 && current[row -1][col -1])
  {
    count ++;
  }
  if (row > 0 && current[row-1][col])
  {
    count ++;
  }
  if (row > 0 && col < size - 1 && current[row-1][col + 1])
  {
    count ++;
  }
  
  if (col > 0 && current[row][col - 1])
  {
    count ++;
  }
  if (col < size - 1 && current[row][col + 1])
  {
    count ++;    
  }
  if (col > 0 && row < size - 1 && current[row + 1][col -1])
  {
    count ++;
  }
  if (row < size - 1 && current[row + 1][col])
  {
    count ++;
  }
  if (col < size - 1 && row < size - 1 && current[row + 1][col + 1])
  {
    count ++;
  }
  
  return count;
}

void render()
{
  stroke(0);
  fill(0, 255, 0);
  for(int row = 0 ; row < size ; row ++)
  {
    for(int col = 0 ; col < size ; col ++)
    {
      float x = col * cellSize;
      float y = row * cellSize;
      if (current[row][col])
      {
        rect(x, y, cellSize, cellSize);
      }
    }
  }
}

void randomise()
{
  for(int row = 0 ; row < size ; row ++)
  {
    for(int col = 0 ; col < size ; col ++)
    {
      int dice = (int) random(0, 2);
      current[row][col] = (dice == 1);      
    }
  }
}

int size = 100;
boolean[][] current = new boolean[size][size];
boolean[][] next = new boolean[size][size];
float cellSize;



void update()
{
  for(int row = 0 ; row < size ; row ++)
  {
    for(int col = 0 ; col < size ; col ++)
    {
      int count = countLiveCellsAround(row, col);
      if (current[row][col])
      {
        if (count == 2 || count == 3)
        {
          next[row][col] = true;
        }
        else
        {
          next[row][col] = false;
        }
      }
      else
      {
        if (count == 3)
        {
          next[row][col] = true;
        }
        else
        {
          next[row][col] = false;
        }
      }
    }
  }
  boolean[][] temp;
  temp = current;
  current = next;
  next = temp;  
}

void clear()
{
  for(int row = 0 ; row < size ; row ++)
  {
    for(int col = 0 ; col < size ; col ++)
    {
      current[row][col] = false;
    }
  }
}

void draw()
{
  println(countLiveCellsAround(49,49));
  background(0);
  render();
  update();
  
  if (keyPressed)
  {
    if (key == ' ')
    {
      clear();
    }
    if (key == 'r')
    {
      randomise();
    }
  }
}