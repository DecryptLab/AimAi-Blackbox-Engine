.class public Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IAccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$unregisterAccountListener;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$registerAccountListener;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAccountsAndVisibilityForPackage;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAccountVisibility;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$setAccountVisibility;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$addAccountExplicitlyWithVisibility;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getPackagesAndVisibilityForAccount;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAuthTokenLabel;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$accountAuthenticated;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$confirmCredentialsAsUser;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$editProperties;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$updateCredentials;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$addAccountAsUser;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$addAccount;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAuthToken;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$updateAppPermission;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$setUserData;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$clearPassword;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$setPassword;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$setAuthToken;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$peekAuthToken;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$invalidateAuthToken;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$copyAccountToUser;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$removeAccountExplicitly;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$removeAccountAsUser;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$addAccountExplicitly;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAccountsAsUser;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAccountsByFeatures;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAccountByTypeAndFeatures;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAccountsByTypeForPackage;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAccountsForPackage;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getAuthenticatorTypes;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getUserData;,
        Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy$getPassword;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IAccountManagerProxy"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 3

    .line 36
    invoke-static {}, Lblack/android/accounts/BRIAccountManagerStub;->get()Lblack/android/accounts/IAccountManagerStubStatic;

    move-result-object p0

    invoke-static {}, Lblack/android/os/BRServiceManager;->get()Lblack/android/os/ServiceManagerStatic;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Lblack/android/os/ServiceManagerStatic;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0, v0}, Lblack/android/accounts/IAccountManagerStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 41
    const-string p1, "account"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IAccountManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAccountManagerProxy"

    invoke-static {v1, v0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 1

    .line 46
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IAccountManagerProxy.accountAuthenticated (top.niunaijun.blackbox.fake.service.IAccountManagerProxy$accountAuthenticated)
