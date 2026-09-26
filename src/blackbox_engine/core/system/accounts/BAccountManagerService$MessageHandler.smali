.class final Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$MessageHandler;
.super Landroid/os/Handler;
.source "BAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1553
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$MessageHandler;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    .line 1554
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1559
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 1568
    :try_start_8
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$MessageHandler;->this$0:Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p1}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 1570
    const-string p1, "AccountManagerService"

    const-string v0, "Unable to copy shared account"

    invoke-static {p1, v0, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 1574
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled account message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1561
    :cond_37
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;

    if-eqz p0, :cond_45

    .line 1564
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$Session;->onTimedOut()V

    return-void

    .line 1562
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid account session timeout message"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class top.niunaijun.blackbox.core.system.accounts.BAccountManagerService.RemoveAccountSession (top.niunaijun.blackbox.core.system.accounts.BAccountManagerService$RemoveAccountSession)
