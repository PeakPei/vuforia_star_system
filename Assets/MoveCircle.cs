using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveCircle : MonoBehaviour {
    public float speed = 1;
	// Update is called once per frame
	void Update () 
    {
        transform.Rotate(new Vector3(0, speed, 0));
	}
}
