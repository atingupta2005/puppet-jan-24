include chocolatey

package { 'notepadplusplus':
  ensure   => latest,
  provider => 'chocolatey',
}
