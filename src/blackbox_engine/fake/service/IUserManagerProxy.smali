.class public Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IUserManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$SomeUserHasSeedAccount;,
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$ChangeSeedAccountData;,
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$GetSeedAccountData;,
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$IsUserOfType;,
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$GetUsers;,
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$GetUserInfo;,
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$GetProfileParent;,
        Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy$GetApplicationRestrictions;
    }
.end annotation


# static fields
.field private static final USER_FLAG_MAIN:I = 0x4000

.field private static final USER_TYPE_FULL_SECONDARY:Ljava/lang/String; = "android.os.usertype.full.SECONDARY"


# direct methods
.method static bridge synthetic -$$Nest$smcreateVirtualUserInfo()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy;->createVirtualUserInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static createVirtualUserInfo()Ljava/lang/Object;
    .registers 4

    .line 117
    invoke-static {}, Lblack/android/content/pm/BRUserInfo;->get()Lblack/android/content/pm/UserInfoStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/content/pm/UserInfoStatic;->FLAG_PRIMARY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x4000

    .line 118
    invoke-static {}, Lblack/android/content/pm/BRUserInfo;->get()Lblack/android/content/pm/UserInfoStatic;

    move-result-object v1

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v2

    const-string v3, "BlackBox"

    invoke-interface {v1, v2, v3, v0}, Lblack/android/content/pm/UserInfoStatic;->_new(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 36
    invoke-static {}, Lblack/android/os/BRIUserManagerStub;->get()Lblack/android/os/IUserManagerStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/os/IUserManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 41
    const-string p1, "user"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IUserManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.fake.service.IUserManagerProxy.ChangeSeedAccountData (top.niunaijun.blackbox.fake.service.IUserManagerProxy$ChangeSeedAccountData)
