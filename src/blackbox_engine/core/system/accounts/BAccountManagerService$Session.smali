.class abstract Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "BAccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field private mBinding:Z

.field private mBound:Z

.field private mClosed:Z

.field final mCreationTime:J

.field private mDeathLinked:Z

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mSessionLock:Ljava/lang/Object;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;


# direct methods
.method public constructor <init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1612
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1618
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    .line 1619
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 1581
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1595
    iput v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    .line 1596
    iput v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    .line 1597
    iput v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    const/4 v2, 0x0

    .line 1599
    iput-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz p4, :cond_58

    .line 1622
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    .line 1623
    iput-boolean p6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 1624
    iput-object p3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1625
    iput-object p4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 1626
    iput-boolean p5, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 1627
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mCreationTime:J

    .line 1628
    iput-object p7, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 1629
    iput-boolean p8, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 1630
    iput-boolean p9, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 1632
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p2

    monitor-enter p2

    .line 1633
    :try_start_33
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_55

    if-eqz p3, :cond_54

    .line 1638
    :try_start_41
    monitor-enter v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_42} :catch_51

    .line 1639
    :try_start_42
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 p1, 0x1

    .line 1640
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mDeathLinked:Z

    .line 1641
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_51} :catch_51

    .line 1646
    :catch_51
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->close()V

    :cond_54
    return-void

    :catchall_55
    move-exception p0

    .line 1634
    :try_start_56
    monitor-exit p2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0

    .line 1621
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .registers 10

    const-string v0, "bindService to "

    const-string v1, "Unable to bind account authenticator "

    .line 1988
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v2, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$mgetAuthenticatorInfo(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_31

    .line 1990
    const-string p0, "AccountManagerService"

    invoke-static {p0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 1991
    const-string p0, "AccountManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "there is no authenticator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", bailing out"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return v4

    .line 2004
    :cond_31
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2005
    const-string v5, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2006
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2009
    const-string v2, "_B_|_UserId"

    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    iget v6, v6, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->userId:I

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2011
    const-string v2, "AccountManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2012
    const-string v2, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "performing bindService to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_70
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2019
    :try_start_73
    iget-boolean v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    if-eqz v6, :cond_79

    .line 2020
    monitor-exit v2

    return v4

    :cond_79
    const/4 v6, 0x1

    .line 2022
    iput-boolean v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBinding:Z

    .line 2023
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_10f

    .line 2026
    :try_start_7d
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmContext(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1, p0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_87
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_87} :catch_c8
    .catchall {:try_start_7d .. :try_end_87} :catchall_c5

    if-nez p1, :cond_ac

    .line 2027
    :try_start_89
    const-string v2, "AccountManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 2028
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_a9} :catch_aa
    .catchall {:try_start_89 .. :try_end_a9} :catchall_f5

    goto :goto_ac

    :catch_aa
    move-exception v0

    goto :goto_ca

    .line 2036
    :cond_ac
    :goto_ac
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2037
    :try_start_af
    iput-boolean v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBinding:Z

    if-eqz p1, :cond_bb

    .line 2039
    iget-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    if-eqz v1, :cond_b9

    move v4, v6

    goto :goto_bb

    .line 2042
    :cond_b9
    iput-boolean v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBound:Z

    .line 2045
    :cond_bb
    :goto_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_af .. :try_end_bc} :catchall_c2

    if-eqz v4, :cond_c1

    .line 2047
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->unbindSafely()V

    :cond_c1
    return p1

    :catchall_c2
    move-exception p0

    .line 2045
    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p0

    :catchall_c5
    move-exception v0

    move p1, v4

    goto :goto_f6

    :catch_c8
    move-exception v0

    move p1, v4

    .line 2032
    :goto_ca
    :try_start_ca
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catchall {:try_start_ca .. :try_end_dc} :catchall_f5

    .line 2036
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2037
    :try_start_df
    iput-boolean v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBinding:Z

    if-eqz p1, :cond_ea

    .line 2039
    iget-boolean p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    if-eqz p1, :cond_e8

    goto :goto_eb

    .line 2042
    :cond_e8
    iput-boolean v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBound:Z

    :cond_ea
    move v6, v4

    .line 2045
    :goto_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_df .. :try_end_ec} :catchall_f2

    if-eqz v6, :cond_f1

    .line 2047
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->unbindSafely()V

    :cond_f1
    return v4

    :catchall_f2
    move-exception p0

    .line 2045
    :try_start_f3
    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw p0

    :catchall_f5
    move-exception v0

    .line 2036
    :goto_f6
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2037
    :try_start_f9
    iput-boolean v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBinding:Z

    if-eqz p1, :cond_105

    .line 2039
    iget-boolean p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    if-eqz p1, :cond_103

    move v4, v6

    goto :goto_105

    .line 2042
    :cond_103
    iput-boolean v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBound:Z

    .line 2045
    :cond_105
    :goto_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_f9 .. :try_end_106} :catchall_10c

    if-eqz v4, :cond_10b

    .line 2047
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->unbindSafely()V

    .line 2049
    :cond_10b
    throw v0

    :catchall_10c
    move-exception p0

    .line 2045
    :try_start_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw p0

    :catchall_10f
    move-exception p0

    .line 2023
    :try_start_110
    monitor-exit v2
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw p0
.end method

.method private close()V
    .registers 2

    const/4 v0, 0x0

    .line 1702
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->finish(Z)Landroid/accounts/IAccountManagerResponse;

    return-void
.end method

.method private finish(Z)Landroid/accounts/IAccountManagerResponse;
    .registers 10

    .line 1709
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    :try_start_3
    iget-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1711
    monitor-exit v0

    return-object v2

    :cond_a
    const/4 v1, 0x1

    .line 1713
    iput-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    .line 1714
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1715
    iput-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1716
    iget-boolean v3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mDeathLinked:Z

    const/4 v4, 0x0

    .line 1717
    iput-boolean v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mDeathLinked:Z

    .line 1718
    iget-boolean v5, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBound:Z

    .line 1719
    iput-boolean v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mBound:Z

    .line 1720
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_4a

    .line 1721
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v6

    monitor-enter v6

    .line 1722
    :try_start_22
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmSessions(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_47

    if-eqz v1, :cond_3b

    if-eqz v3, :cond_3b

    .line 1725
    invoke-interface {v1}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1727
    :cond_3b
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->cancelTimeout()V

    if-eqz v5, :cond_43

    .line 1729
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->unbindSafely()V

    :cond_43
    if-eqz p1, :cond_46

    return-object v1

    :cond_46
    return-object v2

    :catchall_47
    move-exception p0

    .line 1723
    :try_start_48
    monitor-exit v6
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0

    :catchall_4a
    move-exception p0

    .line 1720
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private getResponseIfOpen()Landroid/accounts/IAccountManagerResponse;
    .registers 3

    .line 1656
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1657
    :try_start_3
    iget-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    if-eqz v1, :cond_9

    const/4 p0, 0x0

    goto :goto_b

    :cond_9
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    :goto_b
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1658
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private handleResult(Landroid/os/Bundle;)V
    .registers 11

    .line 1858
    const-string v0, "errorCode"

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    .line 1860
    const-string v1, "accountType"

    const-string v3, "authAccount"

    if-eqz p1, :cond_73

    .line 1861
    const-string v4, "booleanResult"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1864
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1865
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v6, v2

    goto :goto_24

    :cond_23
    move v6, v5

    .line 1869
    :goto_24
    iget-boolean v7, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    if-eqz v7, :cond_2d

    if-nez v4, :cond_2e

    if-eqz v6, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v5

    :cond_2e
    :goto_2e
    if-nez v2, :cond_34

    .line 1871
    iget-boolean v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v4, :cond_73

    .line 1872
    :cond_34
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    iget-object v7, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    iget v7, v7, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->userId:I

    invoke-static {v4, v5, v6, v7}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$misAccountPresentForCaller(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v2, :cond_56

    if-eqz v4, :cond_56

    .line 1874
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    new-instance v6, Landroid/accounts/Account;

    iget-object v7, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v8, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5, v6}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$mupdateLastAuthenticatedTime(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    .line 1876
    :cond_56
    iget-boolean v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v2, :cond_73

    if-eqz v4, :cond_6c

    .line 1879
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v2, v4}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J

    move-result-wide v4

    goto :goto_6e

    :cond_6c
    const-wide/16 v4, -0x1

    .line 1883
    :goto_6e
    const-string v2, "lastAuthenticatedTime"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_73
    const/4 v2, 0x5

    .line 1888
    const-string v4, "intent"

    if-eqz p1, :cond_90

    .line 1889
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-eqz v5, :cond_91

    .line 1891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1890
    invoke-virtual {p0, v6, v5}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_91

    .line 1893
    const-string p1, "invalid intent in bundle returned"

    invoke-virtual {p0, v2, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    :cond_90
    const/4 v5, 0x0

    .line 1898
    :cond_91
    const-string v6, "authtoken"

    if-eqz p1, :cond_b8

    .line 1899
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b8

    .line 1900
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1901
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1902
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b8

    .line 1903
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    :cond_b8
    iget-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v1, :cond_c9

    if-eqz p1, :cond_c9

    .line 1910
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1911
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->getResponseIfOpen()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    goto :goto_cd

    .line 1913
    :cond_c9
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    :goto_cd
    if-eqz v1, :cond_158

    const/4 v3, 0x2

    .line 1917
    const-string v4, "AccountManagerService"

    if-nez p1, :cond_102

    .line 1918
    :try_start_d4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 1919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " calling onError() on response "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_fc
    const-string p0, "null bundle returned"

    invoke-interface {v1, v2, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    .line 1925
    :cond_102
    iget-boolean v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v2, :cond_109

    .line 1926
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1928
    :cond_109
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 1929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " calling onResult() on response "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_131
    const/4 p0, -0x1

    .line 1932
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_148

    if-nez v5, :cond_148

    .line 1935
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "errorMessage"

    .line 1936
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1935
    invoke-interface {v1, p0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    .line 1938
    :cond_148
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_14b} :catch_14c

    return-void

    :catch_14c
    move-exception p0

    .line 1943
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 1944
    const-string p1, "failure while notifying response"

    invoke-static {v4, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_158
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .line 1662
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1663
    :try_start_3
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1664
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private scheduleTimeout()V
    .registers 4

    .line 1770
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->cancelTimeout()V

    .line 1771
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmHandler(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmHandler(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    .line 1772
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/32 v1, 0xdbba0

    .line 1771
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private unbindSafely()V
    .registers 3

    .line 1777
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmContext(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 1779
    const-string v0, "AccountManagerService"

    const-string v1, "Unable to unbind account authenticator"

    invoke-static {v0, v1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method bind()V
    .registers 4

    .line 1756
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_51

    .line 1759
    :cond_7
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->scheduleTimeout()V

    const/4 v0, 0x2

    .line 1760
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initiating bind to authenticator type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_27
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_51

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bind attempt failed for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1765
    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->onError(ILjava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public binderDied()V
    .registers 1

    .line 1736
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->close()V

    return-void
.end method

.method cancel()V
    .registers 1

    .line 1740
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->close()V

    return-void
.end method

.method public cancelTimeout()V
    .registers 3

    .line 1784
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmHandler(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)Z
    .registers 7

    .line 1678
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 1679
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1681
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, -0xc4

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p1, 0x0

    .line 1687
    :try_start_1c
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-static {v3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->-$$Nest$fgetmPms(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v3

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->userId:I

    invoke-virtual {v3, p2, p1, v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2a} :catch_37
    .catchall {:try_start_1c .. :try_end_2a} :catchall_35

    if-nez p0, :cond_30

    .line 1697
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_35
    move-exception p0

    goto :goto_43

    :catch_37
    move-exception p0

    .line 1694
    :try_start_38
    const-string p2, "AccountManagerService"

    const-string v0, "Unable to validate authenticator intent"

    invoke-static {p2, v0, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 1697
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    throw p0
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .registers 2

    const/4 v0, 0x1

    .line 1652
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->finish(Z)Landroid/accounts/IAccountManagerResponse;

    move-result-object p0

    return-object p0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 7

    .line 1959
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5a

    .line 1962
    :cond_7
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    .line 1963
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    const/4 v1, 0x2

    .line 1964
    const-string v2, "AccountManagerService"

    if-eqz v0, :cond_4f

    .line 1965
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " calling onError() on response "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_3e
    :try_start_3e
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p0

    .line 1972
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1973
    const-string p1, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 1977
    :cond_4f
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 1978
    const-string p0, "Session.onError: already closed"

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onRequestContinued()V
    .registers 2

    .line 1952
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1953
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    :cond_c
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 4

    .line 1845
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1849
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->handleResult(Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/BadParcelableException; {:try_start_7 .. :try_end_a} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    goto :goto_e

    :catch_d
    move-exception p1

    .line 1851
    :goto_e
    const-string v0, "AccountManagerService"

    const-string v1, "Rejected malformed authenticator result"

    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x5

    .line 1852
    const-string v0, "invalid bundle returned"

    invoke-virtual {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1789
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object p1

    .line 1790
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1791
    :try_start_7
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    if-eqz v0, :cond_d

    .line 1792
    monitor-exit p2

    return-void

    .line 1794
    :cond_d
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1795
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    .line 1797
    :try_start_10
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->run()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    const/4 p1, 0x1

    .line 1799
    const-string p2, "remote exception"

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    :catchall_1b
    move-exception p0

    .line 1795
    :try_start_1c
    monitor-exit p2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1806
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1807
    :try_start_3
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mClosed:Z

    if-eqz v0, :cond_9

    .line 1808
    monitor-exit p1

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 1810
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1811
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2c

    .line 1812
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 1815
    :try_start_13
    const-string p1, "disconnected"

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 1818
    const-string p1, "AccountManagerService"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1819
    const-string p1, "AccountManagerService"

    const-string v0, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    return-void

    :catchall_2c
    move-exception p0

    .line 1811
    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public onTimedOut()V
    .registers 3

    .line 1829
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1832
    :try_start_6
    const-string v0, "timeout"

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const/4 v0, 0x2

    .line 1835
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1836
    const-string v0, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .registers 3

    .line 1744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session: expectLaunch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->mCreationTime:J

    sub-long/2addr p1, v1

    long-to-double p0, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.core.system.accounts.BAccountManagerService.VirtualCaller (top.niunaijun.blackbox.core.system.accounts.BAccountManagerService$VirtualCaller)
