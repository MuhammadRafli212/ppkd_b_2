// lib/widgets/workout_tile.dart
import 'package:flutter/material.dart';
import 'package:ppkd_b_2/tugas_13/model_workout.dart';

class WorkoutTile extends StatelessWidget {
  final Workout workout;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const WorkoutTile({
    super.key,
    required this.workout,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        title: Text(workout.title),
        subtitle: Text(
          'Durasi: ${workout.duration} menit\nStatus: ${workout.status}',
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: onEdit, icon: const Icon(Icons.edit)),
            IconButton(onPressed: onDelete, icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
