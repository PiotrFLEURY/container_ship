import 'package:flutter/material.dart';

class MenuEntry extends StatelessWidget {
  const MenuEntry({
    super.key,
    required this.icon,
    required this.label,
    this.selected = false,
    required this.onTap,
    this.collapsed = false,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;
  final bool collapsed;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: collapsed ? 48.0 : 300,
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: selected ? Theme.of(context).colorScheme.secondary : null,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment:
              collapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
          mainAxisSize: collapsed ? MainAxisSize.min : MainAxisSize.max,
          children: [
            Icon(
              icon,
              color: selected ? Colors.white : Colors.grey.shade800,
            ),
            if (!collapsed) const SizedBox(width: 8.0),
            if (!collapsed)
              Text(
                label,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: selected ? Colors.white : Colors.grey.shade800,
                      fontWeight: FontWeight.w400,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
