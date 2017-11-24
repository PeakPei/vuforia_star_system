using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateAroundTarget : MonoBehaviour {

    [SerializeField]
    private float speed = 20;

    [SerializeField]
    private Transform target;

    // Update is called once per frame
    void Update ()
    {
        transform.RotateAround(target.position, Vector3.up, -speed * Time.deltaTime);
    }
}
