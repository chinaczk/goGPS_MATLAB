function [week, sow] = time2weektow(time)

% SYNTAX:
%   [week, sow] = time2weektow(time);
%
% INPUT:
%   time = GPS time (continuous since 6-1-1980)
%
% OUTPUT:
%   week = GPS week
%   sow  = GPS seconds-of-week
%
% DESCRIPTION:
%   Conversion from GPS time in continuous format (similar to datenum) to
%   GPS time in week, seconds-of-week.

%--- * --. --- --. .--. ... * ---------------------------------------------
%               ___ ___ ___ 
%     __ _ ___ / __| _ | __|
%    / _` / _ \ (_ |  _|__ \
%    \__, \___/\___|_| |___/
%    |___/                    v 0.5.0
% 
%--------------------------------------------------------------------------
%  Copyright (C) 2009-2017 Mirko Reguzzoni, Eugenio Realini
%  Written by:       
%  Contributors:     ...
%  A list of all the historical goGPS contributors is in CREDITS.nfo
%--------------------------------------------------------------------------
%
%   This program is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
%--------------------------------------------------------------------------
% 01100111 01101111 01000111 01010000 01010011 
%--------------------------------------------------------------------------

sec_in_week = 7*86400;

sow  = rem(time, sec_in_week);
week = (time - sow) / sec_in_week;

