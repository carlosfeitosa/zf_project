<?php

interface Interface_RochedoMapperPersistencia extends Interface_DbTable
{

    public function save($object);

    public function delete($object);
}