from django.core.management.base import BaseCommand, CommandError
from django.utils.translation import ugettext as _

import dsmr_stats.services


class Command(BaseCommand):
    help = _('Clears all statistics generated. Use this to regenerate them after altering prices.')

    def add_arguments(self, parser):
        super(Command, self).add_arguments(parser)
        parser.add_argument(
            '--ack-to-delete-my-data',
            action='store_true',
            dest='acked_warning',
            default=False,
            help=_('Required to acknowledge you that you WILL delete your statistics with this.')
        )

    def handle(self, **options):
        if not options.get('acked_warning'):
            raise CommandError(_(
                'Intended usage is NOT production! Force by using --ack-to-delete-my-data'
            ))

        dsmr_stats.services.clear_statistics()
