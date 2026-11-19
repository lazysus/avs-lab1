#!/bin/bash

cd "$HOME/lab0" || exit 1

echo "Поиск 1:"
ls -lR "$HOME/lab0" | grep '^-' | grep -v '_copy$' | sort -k5,5n | tail -n 4

echo "Поиск 2:"
grep -rhiE 'сеня|федя' claude_monet evening_incident | grep -v 'Баринов' | sort | head -n 6

echo "Поиск 3:"
grep -li 'рыб' claude_monet/kitchen/cold_station/* claude_monet/staff_room/cold_backup/* | wc -l

echo "Поиск 4:"
tail -q -n 2 claude_monet/kitchen/hot_station/*_inventory claude_monet/kitchen/cold_station/*_inventory | grep -iE 'проверил|оста' | sort -r

echo "Поиск 5:"
grep -vE 'Сеня|Федя' claude_monet/kitchen/total_inventory | sort -r | head -n 3 | wc -w

echo "Поиск 6:"
ls -lR "$HOME/lab0" | grep '^l' | sort -k9,9r

echo "Поиск 7:"
grep -hiE 'кух|шеф' claude_monet/chef_office/barinov_report claude_monet/staff_room/shift_order claude_monet/staff_room/leva_warning | grep -v 'после' | sort -r | wc -w

rm claude_monet/chef_office/barinov_report
rm claude_monet/chef_office/product_loss
rm kitchen_work
rm evening_incident
rm claude_monet/kitchen/incident_copy
rm claude_monet/freezer/reserve_list
rmdir claude_monet/freezer
rm -r claude_monet/staff_room/cold_backup
