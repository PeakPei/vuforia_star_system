using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeMover : MonoBehaviour {
	[SerializeField]
	float speed = 10.0f;
	
	// Update is called once per frame
	void Update ()
    {
		gameObject.transform.Translate (Vector3.forward * speed * Time.deltaTime);
	}
}
