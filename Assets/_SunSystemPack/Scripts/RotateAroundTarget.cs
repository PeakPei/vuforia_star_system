using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateAroundTarget : MonoBehaviour {

    [SerializeField]
    private float speed = 20;

    [SerializeField]
    private Transform target;

	void Start()
	{
		transform.RotateAround(target.position, Vector3.up, Random.Range(0,1000));
	}
    
    void Update ()
    {
        transform.RotateAround(target.position, Vector3.up, -speed * Time.deltaTime);
    }
}
