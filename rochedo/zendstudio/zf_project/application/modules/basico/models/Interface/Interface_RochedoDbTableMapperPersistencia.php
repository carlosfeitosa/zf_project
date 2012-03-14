<?php

interface Interface_RochedoDbTableMapperPersistencia extends Interface_DbTable
{

    public function save($object);

    public function delete($object);
}