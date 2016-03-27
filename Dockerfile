FROM ruby:2.3-onbuild

EXPOSE 3000

CMD [ "rackup", "-p", "3000", "--host", "0.0.0.0" ]
