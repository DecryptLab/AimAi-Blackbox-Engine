.class Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;
.super Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;
.source "BAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPackage:Ljava/lang/String;

.field final synthetic val$customTokens:Z

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
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
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 676
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    iput-object p9, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$options:Landroid/os/Bundle;

    iput-object p10, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$account:Landroid/accounts/Account;

    iput-object p11, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$authTokenType:Ljava/lang/String;

    iput-boolean p12, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$notifyOnAuthFailure:Z

    iput-boolean p13, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$customTokens:Z

    iput-object p14, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$callerPackage:Ljava/lang/String;

    invoke-direct/range {p0 .. p8}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;-><init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 11

    if-eqz p1, :cond_5e

    .line 695
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5e

    .line 697
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    const-string v1, "accountType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_57

    .line 704
    :cond_23
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$customTokens:Z

    if-nez v0, :cond_35

    .line 706
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v6}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveAuthTokenToDatabase(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_35
    const-string v0, "android.accounts.expiry"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 714
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$customTokens:Z

    if-eqz v0, :cond_5e

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-lez v0, :cond_5e

    .line 716
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->mAccounts:Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;

    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$callerPackage:Ljava/lang/String;

    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$authTokenType:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->saveCachedToken(Ltop/niunaijun/blackbox/core/system/accounts/BUserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5e

    :cond_57
    :goto_57
    const/4 p1, 0x5

    .line 700
    const-string v0, "the type and name should not be empty"

    invoke-virtual {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->onError(ILjava/lang/String;)V

    return-void

    .line 726
    :cond_5e
    :goto_5e
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$options:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 679
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", getAuthToken, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$account:Landroid/accounts/Account;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", authTokenType "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", loginOptions "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$options:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", notifyOnAuthFailure "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$3;->val$notifyOnAuthFailure:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.core.system.accounts.BAccountManagerService.AnonymousClass4 (top.niunaijun.blackbox.core.system.accounts.BAccountManagerService$4)
