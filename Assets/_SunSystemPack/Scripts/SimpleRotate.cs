using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleRotate : MonoBehaviour
{
    [SerializeField] private float speed = 10.0f;
    [SerializeField] private Vector3 direction;
    // Use this for initialization
    
	void Update ()
    {
        transform.Rotate(direction * speed * Time.deltaTime);
	}
}
