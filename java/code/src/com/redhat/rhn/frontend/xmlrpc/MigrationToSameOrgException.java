/**
 * Copyright (c) 2008 Red Hat, Inc.
 *
 * This software is licensed to you under the GNU General Public License,
 * version 2 (GPLv2). There is NO WARRANTY for this software, express or
 * implied, including the implied warranties of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. You should have received a copy of GPLv2
 * along with this software; if not, see
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
 * 
 * Red Hat trademarks are not licensed under GPLv2. No permission is
 * granted to use or replicate Red Hat trademarks that are incorporated
 * in this software or its documentation. 
 */

package com.redhat.rhn.frontend.xmlrpc;

import com.redhat.rhn.FaultException;
import com.redhat.rhn.common.localization.LocalizationService;
import com.redhat.rhn.domain.user.User;

/**
 * Organization Not Trusted Exception
 *
 * @version $Rev$
 */
public class MigrationToSameOrgException extends FaultException  {

    /**
     * Constructor
     * @param user the user attempting the request
     */
    public MigrationToSameOrgException(User user) {
        super(1069, "MigrationToSameOrg" , LocalizationService.getInstance().
                getMessage("api.org.migrationtosameorg", 
                        new Object [] {user.getLogin(), user.getOrg().getId()}));
    }

    /**
     * Constructor
     * @param user the user attempting the request
     * @param cause the cause
     */
    public MigrationToSameOrgException(User user, Throwable cause) {
        super(1069, "MigrationToSameOrg" , LocalizationService.getInstance().
                getMessage("api.org.migrationtosameorg", 
                        new Object [] {user.getLogin(), user.getOrg().getId()}), cause);
    }
}
