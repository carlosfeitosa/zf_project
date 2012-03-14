<?php
/**
 * 
 * Interface para os métodos genéricos de persistencia
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
interface Interface_RochedoMapperPersistencia extends Interface_RochedoMapper
{

    public function save($object);

    public function delete($object);
}