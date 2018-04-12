// Using classes from these namespaces
using System.Collections;
using System.Collections.Generic;
using UnityEngine; 

// TankController is a subclass of MonoBehaviour
// Inheritance
public class TankController : MonoBehaviour {

    // Happens before start
    public void Awake()
    {
        
    }
    // Use this for initialization
    void Start () {
		
	}

    [Range(1, 10)]
    public float moveSpeed = 5.0f;

    [Range(1, 360)]
    public float rotSpeed = 30.0f;

    public GameObject cubePrefab;

    void Update () {
        float walk = Input.GetAxis("Vertical");
        transform.Translate(0, 0, walk * moveSpeed * Time.deltaTime);
        float strafe = Input.GetAxis("Horizontal");
        transform.Translate(strafe * moveSpeed * Time.deltaTime, 0, 0);

        float rot = Input.GetAxis("Rotation");
        transform.Rotate(0, rot * rotSpeed * Time.deltaTime, 0);

        if (Input.GetKeyDown(KeyCode.Joystick1Button3))
        {
            CreateWall();
        }
    }

    void CreateWall()
    {
        for (float y = 0.5f; y <= 10.5f; y++)
        {
            for (float x = -5; x <= 4; x++)
            {
                GameObject cube = GameObject.Instantiate<GameObject>(cubePrefab);
                cube.transform.position = transform.TransformPoint(new Vector3(x, y, 10));
                cube.GetComponent<Renderer>().material.color
                    = Color.HSVToRGB(Random.Range(0.0f, 1.0f)
                        , 1
                        , 1
                        );
            }
        }
    }
}
