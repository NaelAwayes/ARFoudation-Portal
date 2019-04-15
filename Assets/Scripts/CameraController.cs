/*
 * Simple Camera Controller class for debugging and testing
 */


using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{

    [Range(0.00001f, 3)]
    public float speed = 0.1f;

    void Update()
    {


        //Get input value -1 to 1, then multiply by speed
        Vector3 velocity = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")) * speed;
        transform.Translate(velocity);

        //Rotation
        float rotation = 0;
        if (Input.GetKey(KeyCode.Q))
            rotation -= 1;
        if (Input.GetKey(KeyCode.E))
            rotation += 1;
        transform.Rotate(0, rotation, 0);
    }
}
