.class public Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;
.super Ltop/niunaijun/blackbox/core/system/accounts/IBAccountManagerService$Stub;
.source "BAccountManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;
.implements Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;,
        Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$MessageHandler;,
        Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;,
        Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$RemoveAccountSession;,
        Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;,
        Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;
    }
.end annotation


# static fields
.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static final TIMEOUT_DELAY_MS:J = 0xdbba0L

.field private static sService:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;


# instance fields
.field private final mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenCaches:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserAccountsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPms(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessions(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcompleteCloningAccount(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAuthenticatorInfo(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;
    .registers 2

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleGetAccountsResult(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAccountPresentForCaller(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveAccountInternal(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->removeAccountInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateLastAuthenticatedTime(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->updateLastAuthenticatedTime(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->sService:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [Landroid/accounts/Account;

    sput-object v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 110
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/IBAccountManagerService$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    .line 98
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService-IA;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 102
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$MessageHandler;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mHandler:Landroid/os/Handler;

    .line 111
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    return-void
.end method

.method private addAccountForCaller(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;ILtop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v3

    .line 746
    :goto_b
    const-string v5, "response is null"

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    .line 747
    :goto_14
    const-string v3, "accountType is null"

    invoke-static {v2, v3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    if-nez v0, :cond_22

    .line 749
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v15, v0

    goto :goto_28

    :cond_22
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v15, v2

    .line 750
    :goto_28
    const-string v0, "callerPid"

    iget v2, v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->pid:I

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    const-string v0, "callerUid"

    iget v2, v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->uid:I

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const-string v0, "androidPackageName"

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-object/from16 v4, p0

    move/from16 v0, p7

    .line 756
    :try_start_45
    invoke-virtual {v4, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v5

    .line 757
    new-instance v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$4;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v16, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v8, p5

    invoke-direct/range {v3 .. v16}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$4;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$4;->bind()V
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_65

    .line 774
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_65
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    throw v0
.end method

.method private addAccountInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "skipping since insertExtra failed for key "

    if-nez p1, :cond_9

    .line 1080
    new-instance p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    invoke-direct {p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;-><init>()V

    .line 1082
    :cond_9
    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1083
    :try_start_c
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1085
    const-string p0, "AccountManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1086
    monitor-exit v1

    return p0

    .line 1088
    :cond_27
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->addAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object v0

    .line 1089
    iput-object p3, v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->password:Ljava/lang/String;

    if-eqz p4, :cond_4b

    .line 1091
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_37
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1092
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {v0, v2, v3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->insertExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_4b
    if-eqz p5, :cond_75

    .line 1098
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_55
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_75

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 1099
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 1100
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1099
    invoke-direct {p0, p2, p5, p4, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;ILtop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Z

    goto :goto_55

    .line 1104
    :cond_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_c .. :try_end_76} :catchall_7b

    .line 1105
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    const/4 p0, 0x1

    return p0

    :catchall_7b
    move-exception p0

    .line 1104
    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;I)V
    .registers 18

    .line 955
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$8;

    iget-object v4, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v11, p2

    move-object v9, p3

    move-object/from16 v2, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$8;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 993
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$8;->bind()V

    return-void
.end method

.method private filterAccounts(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;
    .registers 12

    .line 1158
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1159
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_29

    aget-object v4, p2, v3

    .line 1160
    invoke-direct {p0, v4, p3, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1f

    if-eqz p4, :cond_26

    const/4 v6, 0x4

    if-ne v5, v6, :cond_26

    .line 1166
    :cond_1f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1174
    :cond_29
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-array p1, v2, [Landroid/accounts/Account;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method private generateServicesMap(Ljava/util/List;Ljava/util/Map;Ltop/niunaijun/blackbox/core/system/accounts/RegisteredServicesParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;",
            ">;",
            "Ltop/niunaijun/blackbox/core/system/accounts/RegisteredServicesParser;",
            ")V"
        }
    .end annotation

    .line 1527
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1528
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.accounts.AccountAuthenticator"

    invoke-virtual {p3, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/accounts/RegisteredServicesParser;->getParser(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1532
    :try_start_1c
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1534
    :goto_20
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2b

    goto :goto_20

    .line 1537
    :cond_2b
    const-string v3, "account-authenticator"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1538
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1539
    invoke-virtual {p3, v1, v3}, Ltop/niunaijun/blackbox/core/system/accounts/RegisteredServicesParser;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1538
    invoke-static {v1, v3, v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1542
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    new-instance v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, v1, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_57} :catch_58

    goto :goto_4

    :catch_58
    move-exception v0

    .line 1546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_5d
    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;
    .registers 1

    .line 107
    sget-object v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->sService:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    return-object v0
.end method

.method private getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)I
    .registers 5

    .line 1225
    iget-object v0, p3, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1227
    :try_start_3
    invoke-direct {p0, p1, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/util/Map;

    move-result-object p0

    .line 1228
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_14

    .line 1229
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 1230
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private getAuthenticatorInfo(Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;
    .registers 3

    .line 1520
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    monitor-enter v0

    .line 1521
    :try_start_5
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 1522
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 1

    .line 2110
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireCallingProcess()Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1236
    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getVisibility(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 7

    .line 1245
    invoke-direct {p0, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_7

    return-void

    .line 1249
    :cond_7
    array-length p3, p2

    const/4 p4, 0x1

    if-ne p3, p4, :cond_27

    .line 1250
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 p4, 0x0

    .line 1251
    aget-object v0, p2, p4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "authAccount"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    aget-object p2, p2, p4

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p4, "accountType"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0, p1, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 1257
    :cond_27
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 1302
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p0

    const/4 p3, 0x0

    if-eqz p0, :cond_14

    .line 1304
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return p3
.end method

.method private isAuthenticatorPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_20

    .line 1210
    :cond_e
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1211
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object p0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 1212
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v1
.end method

.method private loadAccounts()V
    .registers 11

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 141
    :try_start_7
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAccountsConf()Ljava/io/File;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_8e
    .catchall {:try_start_7 .. :try_end_f} :catchall_8c

    if-nez v4, :cond_1c

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v2

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    .line 145
    :cond_1c
    :try_start_1c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAccountsConf()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_8e
    .catchall {:try_start_1c .. :try_end_25} :catchall_8c

    .line 146
    :try_start_25
    invoke-static {v4}, Ltop/niunaijun/blackbox/utils/FileUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 147
    array-length v5, v3

    invoke-virtual {v0, v3, v2, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    const-class v3, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3a} :catch_89
    .catchall {:try_start_25 .. :try_end_3a} :catchall_86

    if-nez v3, :cond_47

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    .line 153
    :cond_47
    :try_start_47
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_89
    .catchall {:try_start_47 .. :try_end_4a} :catchall_86

    .line 154
    :try_start_4a
    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 155
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_57
    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 156
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    if-eqz v8, :cond_57

    .line 158
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->userId:I

    .line 159
    iget-object v9, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 162
    :cond_77
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_4a .. :try_end_78} :catchall_83

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_83
    move-exception p0

    .line 162
    :try_start_84
    monitor-exit v5
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw p0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_89
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p0

    move-object v3, v4

    goto :goto_9d

    :catch_89
    move-exception p0

    move-object v3, v4

    goto :goto_8f

    :catchall_8c
    move-exception p0

    goto :goto_9d

    :catch_8e
    move-exception p0

    .line 164
    :goto_8f
    :try_start_8f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_8c

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v2

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    .line 166
    :goto_9d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 168
    throw p0
.end method

.method private needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 7

    .line 1261
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return v1

    .line 1262
    :cond_6
    array-length v0, p1

    if-le v0, v2, :cond_a

    return v2

    .line 1263
    :cond_a
    aget-object p1, p1, v1

    .line 1264
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 1265
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1c

    return v2

    :cond_1c
    return v1
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 6

    .line 2054
    const-string v0, "AccountManagerService"

    if-nez p2, :cond_e

    .line 2055
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    const/4 v1, 0x2

    .line 2057
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2058
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

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_37
    :try_start_37
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p0

    .line 2066
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 2067
    const-string p1, "failure while notifying response"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    return-void
.end method

.method private static parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .registers 12

    .line 1485
    invoke-static {}, Lblack/com/android/internal/BRRstyleable;->get()Lblack/com/android/internal/RstyleableStatic;

    move-result-object v0

    .line 1486
    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->AccountAuthenticator()[I

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1488
    :try_start_c
    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->AccountAuthenticator_accountType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1489
    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->AccountAuthenticator_label()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1490
    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->AccountAuthenticator_icon()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1491
    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->AccountAuthenticator_smallIcon()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1492
    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->AccountAuthenticator_accountPreferences()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1493
    invoke-interface {v0}, Lblack/com/android/internal/RstyleableStatic;->AccountAuthenticator_customTokens()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1494
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_59
    .catchall {:try_start_c .. :try_end_59} :catchall_6a

    if-eqz p2, :cond_60

    .line 1500
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    .line 1497
    :cond_60
    :try_start_60
    new-instance v1, Landroid/accounts/AuthenticatorDescription;

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_6a

    .line 1500
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_6a
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1501
    throw p1
.end method

.method private readUserDataInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1273
    :cond_4
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter p0

    .line 1274
    :try_start_7
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccountUserData(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    .line 1275
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    .line 1276
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private removeAccountInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .registers 4

    .line 1311
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1312
    :try_start_3
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->delAccount(Landroid/accounts/Account;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1314
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    .line 1316
    :cond_c
    monitor-exit v0

    return p1

    :catchall_e
    move-exception p0

    .line 1317
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private removeCachedTokensByType(Ljava/lang/String;I)V
    .registers 6

    .line 245
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 247
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 248
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;

    .line 249
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->userId:I

    if-ne v2, p2, :cond_9

    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_9

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 251
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 254
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method private static requireArgument(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 82
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private requireCallingProcess()Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .registers 4

    .line 2101
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    .line 2102
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->get()Ltop/niunaijun/blackbox/core/system/BProcessManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/system/BProcessManagerService;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2103
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-ne v1, p0, :cond_13

    return-object v0

    .line 2104
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No virtual process for PID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireVirtualCaller(I)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;
    .registers 7

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 2079
    :goto_6
    const-string v2, "userId must be non-negative"

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    .line 2080
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireCallingProcess()Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v1

    .line 2081
    iget v2, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    if-ne v2, p1, :cond_68

    .line 2085
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2086
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 2089
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-virtual {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_41

    .line 2090
    iget v4, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    if-ne v4, v3, :cond_41

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    .line 2092
    invoke-virtual {p0, v2, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 2096
    iget p0, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget p1, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p0

    .line 2097
    new-instance p1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;

    iget v0, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    invoke-direct {p1, v0, p0, v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;-><init>(IILjava/lang/String;)V

    return-object p1

    .line 2093
    :cond_41
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caller package is not installed for virtual user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2087
    :cond_60
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Virtual caller package is empty"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2082
    :cond_68
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Virtual process user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot access accounts for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x3

    .line 1188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p3, :cond_8

    return-object v0

    .line 1190
    :cond_8
    invoke-virtual {p3, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object v1

    if-nez v1, :cond_f

    return-object v0

    .line 1196
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)I

    move-result p3

    .line 1197
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->isAuthenticatorPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    .line 1198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_21
    if-eqz p3, :cond_28

    .line 1201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_28
    const/4 p0, 0x4

    .line 1203
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private saveAllAccounts()Z
    .registers 9

    .line 172
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v0

    .line 173
    :try_start_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 174
    new-instance v2, Landroidx/core/util/AtomicFile;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAccountsConf()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5a

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 177
    :try_start_13
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 178
    invoke-virtual {v2}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 179
    invoke-static {v1, v5}, Ltop/niunaijun/blackbox/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 180
    invoke-virtual {v2, v5}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_2e

    .line 192
    :try_start_22
    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v5, p0, v3

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_5a

    return v4

    :catchall_2e
    move-exception p0

    .line 183
    :try_start_2f
    const-string v6, "AccountManagerService"

    const-string v7, "Unable to persist virtual accounts"

    invoke-static {v6, v7, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_4e

    .line 185
    :try_start_36
    invoke-virtual {v2, v5}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_42

    :catchall_3a
    move-exception p0

    .line 187
    :try_start_3b
    const-string v2, "AccountManagerService"

    const-string v6, "Unable to roll back virtual account persistence"

    invoke-static {v2, v6, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4e

    .line 192
    :goto_42
    :try_start_42
    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v5, p0, v3

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    monitor-exit v0

    return v3

    :catchall_4e
    move-exception p0

    .line 192
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw p0

    :catchall_5a
    move-exception p0

    .line 195
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method private setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;ILtop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Z
    .registers 5

    .line 1110
    iget-object p0, p4, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter p0

    .line 1111
    :try_start_3
    invoke-virtual {p4, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 1113
    monitor-exit p0

    return p1

    .line 1115
    :cond_c
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1116
    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    .line 1117
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private updateLastAuthenticatedTime(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z
    .registers 3

    .line 2074
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->updateLastAuthenticatedTime(Landroid/accounts/Account;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 837
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p2

    if-nez p2, :cond_d

    const/4 p0, 0x0

    return p0

    .line 840
    :cond_d
    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->updateLastAuthenticatedTime(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v7, p7

    .line 736
    invoke-direct {p0, v7}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireVirtualCaller(I)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 737
    invoke-direct/range {v0 .. v8}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->addAccountForCaller(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;ILtop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;)V

    return-void
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    invoke-virtual/range {p0 .. p7}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 418
    invoke-virtual/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result p0

    return p0
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;I)Z
    .registers 7

    .line 1012
    invoke-virtual {p0, p5}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p5

    move-object v0, p2

    move-object p2, p1

    move-object p1, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, v0

    .line 1013
    invoke-direct/range {p0 .. p5}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->addAccountInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public clearPassword(Landroid/accounts/Account;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0, p1, v0, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->setPassword(Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v12, p3

    move/from16 v0, p4

    .line 457
    invoke-virtual {p0, v12}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 458
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v11

    .line 459
    const-string v1, "AccountManagerService"

    if-eqz v2, :cond_51

    if-nez v11, :cond_13

    goto :goto_51

    .line 472
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Copying account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$2;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, p1

    move-object v1, p0

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v12}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$2;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;I)V

    .line 498
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$2;->bind()V

    return-void

    :cond_51
    :goto_51
    if-eqz p1, :cond_76

    .line 461
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 462
    const-string p2, "booleanResult"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    :try_start_5e
    invoke-interface {p1, p0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception v0

    move-object p0, v0

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to report error back to the client."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_21

    if-eqz p2, :cond_19

    .line 813
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 814
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$6;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v9, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$6;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 826
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$6;->bind()V

    return-void

    .line 811
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 810
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_35

    if-eqz p2, :cond_2d

    .line 350
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 353
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p3, 0x1

    .line 354
    invoke-virtual {p0, v2, p2, v6, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAccountsFromCache(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p2

    .line 357
    invoke-direct {p0, p1, p2, v6, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void

    .line 362
    :cond_1b
    new-instance v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$1;

    invoke-direct {v3, p0, p1, v6, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$1;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;I)V

    .line 382
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 388
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V

    return-void

    .line 348
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 347
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1030
    const-string v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1031
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 1032
    const-string v0, "android:accounts:key_legacy_visible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1033
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)I

    move-result p0

    if-eqz p0, :cond_1d

    return p0

    :cond_1d
    const/4 p0, 0x2

    return p0

    .line 1040
    :cond_1f
    const-string v0, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1041
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)I

    move-result p0

    if-eqz p0, :cond_2e

    return p0

    :cond_2e
    const/4 p0, 0x4

    return p0

    .line 1048
    :cond_30
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 3

    .line 998
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p0

    .line 999
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/accounts/Account;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1053
    const-string v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1054
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1055
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 1056
    iget-object v1, p3, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1057
    :try_start_11
    iget-object v2, p3, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    if-eqz p2, :cond_2f

    .line 1058
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1059
    :cond_2f
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    .line 1060
    invoke-direct {p0, v3, p1, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    .line 1059
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 1063
    :cond_3b
    monitor-exit v1

    return-object v0

    :catchall_3d
    move-exception p0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p0

    .line 334
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_c
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    .line 337
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 338
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 341
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_39

    const/4 p0, 0x0

    .line 342
    new-array p0, p0, [Landroid/accounts/Account;

    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0

    :catchall_39
    move-exception p0

    .line 341
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_36

    .line 396
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    .line 398
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v2

    if-eqz p3, :cond_20

    .line 399
    array-length p4, p3

    if-nez p4, :cond_12

    goto :goto_20

    .line 407
    :cond_12
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 413
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V

    return-void

    :cond_20
    :goto_20
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    const/4 p0, 0x1

    .line 400
    invoke-virtual {v1, v2, v4, v6, p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAccountsFromCache(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    .line 402
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 403
    const-string p2, "accounts"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 404
    invoke-direct {v1, v3, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 394
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;I)[Landroid/accounts/Account;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v1, p3, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_c
    iget-object v2, p3, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    .line 318
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 319
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-direct {p0, v4, p2, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3b

    const/4 v5, 0x4

    if-ne v4, v5, :cond_12

    .line 323
    :cond_3b
    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 327
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_4c

    const/4 p0, 0x0

    .line 328
    new-array p0, p0, [Landroid/accounts/Account;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0

    :catchall_4c
    move-exception p0

    .line 327
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public getAccountsForPackage(Ljava/lang/String;II)[Landroid/accounts/Account;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p2

    .line 297
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v0, p2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_c
    iget-object v1, p2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    .line 300
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-direct {p0, v3, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_31

    const/4 v4, 0x2

    if-eq v3, v4, :cond_31

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12

    .line 304
    :cond_31
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 307
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_42

    const/4 p0, 0x0

    .line 308
    new-array p0, p0, [Landroid/accounts/Account;

    invoke-interface {p3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0

    :catchall_42
    move-exception p0

    .line 307
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method protected getAccountsFromCache(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;
    .registers 11

    if-eqz p2, :cond_1e

    .line 1123
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_5
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    .line 1125
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1b

    if-nez p2, :cond_f

    .line 1127
    sget-object p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 1129
    :cond_f
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->filterAccounts(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 1125
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0

    .line 1134
    :cond_1e
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter p2

    .line 1135
    :try_start_21
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    .line 1136
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->toAccounts()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_2d

    :cond_40
    if-nez v2, :cond_46

    .line 1140
    sget-object p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit p2

    return-object p0

    .line 1142
    :cond_46
    new-array v0, v2, [Landroid/accounts/Account;

    .line 1144
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    .line 1145
    invoke-virtual {v4}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->toAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 1146
    array-length v5, v4

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_53

    .line 1150
    :cond_6a
    monitor-exit p2
    :try_end_6b
    .catchall {:try_start_21 .. :try_end_6b} :catchall_70

    .line 1151
    invoke-direct {p0, p1, v0, p3, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->filterAccounts(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :catchall_70
    move-exception p0

    .line 1150
    :try_start_71
    monitor-exit p2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v0, p6

    move/from16 v2, p7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_12

    move v6, v5

    goto :goto_13

    :cond_12
    move v6, v4

    .line 603
    :goto_13
    const-string v7, "response cannot be null"

    invoke-static {v6, v7}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    const/4 v6, 0x7

    .line 605
    const-string v7, "AccountManagerService"

    if-nez v10, :cond_2a

    .line 606
    :try_start_1d
    const-string v0, "getAuthToken called with null account"

    invoke-static {v7, v0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v0, "account is null"

    invoke-interface {v3, v6, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :catch_28
    move-exception v0

    goto :goto_37

    :cond_2a
    if-nez v11, :cond_4a

    .line 611
    const-string v0, "getAuthToken called with null authTokenType"

    invoke-static {v7, v0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v0, "authTokenType is null"

    invoke-interface {v3, v6, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_36} :catch_28

    return-void

    .line 616
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to report error back to the client."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 619
    :cond_4a
    invoke-direct {v1, v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireVirtualCaller(I)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;

    move-result-object v6

    .line 620
    iget-object v14, v6, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->packageName:Ljava/lang/String;

    if-nez v0, :cond_59

    .line 622
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    goto :goto_5f

    .line 623
    :cond_59
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v9, v8

    .line 624
    :goto_5f
    const-string v0, "androidPackageName"

    iget-object v8, v6, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "callerUid"

    iget v8, v6, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->uid:I

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v0, "callerPid"

    iget v6, v6, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->pid:I

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_7b

    .line 628
    const-string v0, "notifyOnAuthFailure"

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 631
    :cond_7b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 633
    :try_start_7f
    invoke-virtual {v1, v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 634
    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 635
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-boolean v0, v0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_fe

    if-eqz v0, :cond_93

    move v13, v5

    goto :goto_94

    :cond_93
    move v13, v4

    .line 638
    :goto_94
    const-string v0, "accountType"

    const-string v4, "authAccount"

    const-string v5, "authtoken"

    if-nez v13, :cond_bb

    .line 639
    :try_start_9c
    invoke-virtual {v1, v2, v10, v11}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->readAuthTokenInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_bb

    .line 641
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 642
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v5, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {v1, v3, v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_b7
    .catchall {:try_start_9c .. :try_end_b7} :catchall_fe

    .line 730
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_bb
    if-eqz v13, :cond_e8

    .line 651
    :try_start_bd
    invoke-virtual {v1, v2, v10, v11, v14}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->readCachedTokenInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e8

    const/4 v2, 0x2

    .line 657
    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 658
    const-string v2, "getAuthToken: cache hit for custom token authenticator."

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_cf
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 661
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v5, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-direct {v1, v3, v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_e4
    .catchall {:try_start_bd .. :try_end_e4} :catchall_fe

    .line 730
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 669
    :cond_e8
    :try_start_e8
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;

    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v6, 0x0

    move/from16 v12, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v14}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->bind()V
    :try_end_fa
    .catchall {:try_start_e8 .. :try_end_fa} :catchall_fe

    .line 730
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_fe
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 845
    :goto_7
    const-string v3, "accountType cannot be null"

    invoke-static {v2, v3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    if-eqz p3, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    .line 846
    :goto_10
    const-string v1, "authTokenType cannot be null"

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    .line 850
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 851
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$7;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$7;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$7;->bind()V

    return-void
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    monitor-enter v0

    .line 286
    :try_start_a
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;

    .line 287
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 289
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_33

    const/4 p0, 0x0

    .line 290
    new-array p0, p0, [Landroid/accounts/AuthenticatorDescription;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/AuthenticatorDescription;

    return-object p0

    :catchall_33
    move-exception p0

    .line 289
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 883
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p0

    .line 884
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 885
    :try_start_c
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object p0

    if-nez p0, :cond_19

    .line 887
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit p2

    return-object p0

    .line 889
    :cond_19
    new-instance p1, Ljava/util/LinkedHashMap;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p2

    return-object p1

    :catchall_22
    move-exception p0

    .line 890
    monitor-exit p2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getPassword(Landroid/accounts/Account;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 259
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getPassword: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-eqz p1, :cond_42

    .line 265
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p2

    .line 266
    invoke-virtual {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->readPasswordInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;
    .registers 5

    .line 1291
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v0

    .line 1292
    :try_start_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    if-nez v1, :cond_1f

    .line 1294
    new-instance v1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    invoke-direct {v1, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;-><init>(I)V

    .line 1295
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    :cond_1f
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception p0

    .line 1298
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 271
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, p2, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 272
    const-string v2, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_26
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v0, "key cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p3

    .line 279
    invoke-direct {p0, p3, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->readUserDataInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v0

    .line 504
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_7
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    .line 507
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 508
    iget-object v2, v3, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_e

    :cond_2f
    if-eqz v2, :cond_34

    .line 513
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    .line 515
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_69

    .line 517
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter v0

    .line 518
    :try_start_38
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 519
    :cond_3e
    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 520
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;

    .line 521
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->userId:I

    if-ne v2, p3, :cond_3e

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 522
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_3e

    .line 525
    :cond_64
    monitor-exit v0

    return-void

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_38 .. :try_end_68} :catchall_66

    throw p0

    :catchall_69
    move-exception p0

    .line 515
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public loadAuthenticatorCache(Ljava/lang/String;)V
    .registers 6

    .line 1505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1506
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.accounts.AccountAuthenticator"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_11

    .line 1508
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    :cond_11
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    const/16 v2, 0x80

    const/4 v3, -0x1

    .line 1511
    invoke-virtual {p1, v1, v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentServices(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ltop/niunaijun/blackbox/core/system/accounts/RegisteredServicesParser;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/accounts/RegisteredServicesParser;-><init>()V

    .line 1510
    invoke-direct {p0, p1, v0, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->generateServicesMap(Ljava/util/List;Ljava/util/Map;Ltop/niunaijun/blackbox/core/system/accounts/RegisteredServicesParser;)V

    .line 1513
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    monitor-enter p1

    .line 1514
    :try_start_27
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1515
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mAuthenticatorCache:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1516
    monitor-exit p1

    return-void

    :catchall_37
    move-exception p0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public onPackageInstalled(Ljava/lang/String;I)V
    .registers 3

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->loadAuthenticatorCache(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ZI)V
    .registers 4

    .line 124
    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 125
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isLegacyCleanupPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    :cond_e
    const-string p1, "com.google"

    .line 126
    invoke-virtual {p0, p1, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->removeAccountsByTypeForUser(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to persist Google account cleanup for user "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->loadAuthenticatorCache(Ljava/lang/String;)V

    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 531
    const-string v0, "authTokenType cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 535
    :cond_12
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter p3

    .line 536
    :try_start_15
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit p3

    return-object p0

    :catchall_21
    move-exception p0

    .line 537
    monitor-exit p3
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw p0
.end method

.method protected readAuthTokenInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 946
    :cond_4
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter p0

    .line 947
    :try_start_7
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    .line 948
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    .line 949
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p1
.end method

.method protected readCachedTokenInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 924
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter v2

    .line 925
    :try_start_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 926
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 927
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;

    .line 929
    iget v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->userId:I

    iget v5, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->userId:I

    if-ne v4, v5, :cond_d

    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->authTokenType:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 930
    iget-wide v4, v3, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->expiryEpochMillis:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_41

    .line 931
    iget-object p0, v3, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    monitor-exit v2

    return-object p0

    .line 933
    :cond_41
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_45
    const/4 p0, 0x0

    .line 937
    monitor-exit v2

    return-object p0

    :catchall_48
    move-exception p0

    .line 938
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public readPasswordInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 1282
    :cond_4
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_7
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object p1

    if-nez p1, :cond_f

    .line 1285
    monitor-exit v0

    return-object p0

    .line 1286
    :cond_f
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->password:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1287
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 423
    :goto_7
    const-string v3, "account cannot be null"

    invoke-static {v2, v3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    .line 424
    :goto_10
    const-string v1, "response cannot be null"

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->requireArgument(ZLjava/lang/String;)V

    .line 431
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v4

    .line 432
    new-instance v2, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$RemoveAccountSession;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$RemoveAccountSession;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$RemoveAccountSession;->bind()V

    return-void
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 438
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "removeAccountExplicitly: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-nez p1, :cond_40

    .line 448
    const-string p0, "account is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 451
    :cond_40
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p2

    .line 452
    invoke-direct {p0, p2, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->removeAccountInternal(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method public removeAccountsByTypeForAllUsers(Ljava/lang/String;)Z
    .registers 5

    .line 233
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v0

    .line 234
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2d

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->removeAccountsByTypeForUser(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_2b
    const/4 p0, 0x1

    return p0

    :catchall_2d
    move-exception p0

    .line 235
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public removeAccountsByTypeForUser(Ljava/lang/String;I)Z
    .registers 12

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 203
    :cond_8
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    monitor-enter v0

    .line 204
    :try_start_b
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mUserAccountsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    .line 205
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_6b

    const/4 v0, 0x1

    if-nez v2, :cond_1f

    .line 207
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->removeCachedTokensByType(Ljava/lang/String;I)V

    return v0

    .line 210
    :cond_1f
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 211
    :try_start_22
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    .line 214
    :cond_30
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 215
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    .line 216
    iget-object v8, v7, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    if-eqz v8, :cond_30

    iget-object v7, v7, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 217
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v6, v0

    goto :goto_30

    :cond_4f
    if-eqz v6, :cond_63

    .line 221
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    move-result v5

    if-nez v5, :cond_63

    .line 222
    iget-object p0, v2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 223
    iget-object p0, v2, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->accounts:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    monitor-exit v3

    return v1

    .line 226
    :cond_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_22 .. :try_end_64} :catchall_68

    .line 227
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->removeCachedTokensByType(Ljava/lang/String;I)V

    return v0

    :catchall_68
    move-exception p0

    .line 226
    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0

    :catchall_6b
    move-exception p0

    .line 205
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method protected saveAuthTokenToDatabase(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 912
    :cond_3
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_6
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    .line 915
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method protected saveCachedToken(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    if-eqz p2, :cond_21

    if-eqz p4, :cond_21

    if-nez p3, :cond_7

    goto :goto_21

    .line 902
    :cond_7
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;

    iget v1, p1, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->userId:I

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 903
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter p1

    .line 904
    :try_start_16
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 905
    monitor-exit p1

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1d

    throw p0

    :cond_21
    :goto_21
    return-void
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1020
    const-string v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1021
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p4

    if-nez p4, :cond_12

    const/4 p0, 0x0

    return p0

    .line 1024
    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;ILtop/niunaijun/blackbox/core/system/accounts/BUserAccounts;)Z

    move-result p0

    return p0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    const-string v0, "authTokenType cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p4

    if-nez p4, :cond_11

    return-void

    .line 548
    :cond_11
    iget-object v0, p4, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_14
    invoke-virtual {p4, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAuthToken(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    .line 551
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 557
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 560
    :cond_c
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_f
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccount(Landroid/accounts/Account;)Ltop/niunaijun/blackbox/core/system/accounts/BAccount;

    move-result-object v0

    .line 562
    iput-object p2, v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->password:Ljava/lang/String;

    .line 563
    iget-object p2, v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->authTokens:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 564
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    .line 565
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_48

    .line 566
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    monitor-enter p2

    .line 567
    :try_start_21
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mTokenCaches:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 568
    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 569
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;

    .line 570
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/accounts/TokenCache;->userId:I

    if-ne v0, p3, :cond_27

    .line 571
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_27

    .line 574
    :cond_43
    monitor-exit p2

    return-void

    :catchall_45
    move-exception p0

    monitor-exit p2
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_45

    throw p0

    :catchall_48
    move-exception p0

    .line 565
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_25

    if-eqz p1, :cond_1d

    .line 587
    invoke-virtual {p0, p4}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object p4

    if-nez p4, :cond_b

    return-void

    .line 590
    :cond_b
    iget-object v0, p4, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_e
    invoke-virtual {p4, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;->getAccountUserData(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAllAccounts()Z

    .line 593
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw p0

    .line 585
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 584
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public systemReady()V
    .registers 2

    .line 117
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->loadAccounts()V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->loadAuthenticatorCache(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->mPms:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->addPackageMonitor(Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;)V

    return-void
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_26

    .line 788
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->clearCallingIdentity()J

    move/from16 v0, p6

    .line 789
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getUserAccounts(I)Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    move-result-object v2

    .line 790
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$5;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$5;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 805
    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$5;->bind()V

    return-void

    .line 787
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 786
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class top.niunaijun.blackbox.core.system.accounts.BAccountManagerService.AnonymousClass1 (top.niunaijun.blackbox.core.system.accounts.BAccountManagerService$1)
