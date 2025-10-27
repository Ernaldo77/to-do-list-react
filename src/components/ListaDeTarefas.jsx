import ItemDaTarefa from './ItemDaTarefa';

function ListaDeTarefas({ tarefas, onToggle, onRemove }) {
  return (
    <ul className="list-group">
      {tarefas.map(tarefa => (
        <ItemDaTarefa
          key={tarefa.id}
          tarefa={tarefa}
          onToggle={onToggle}
          onRemove={onRemove}
        />
      ))}
    </ul>
  );
}

export default ListaDeTarefas;