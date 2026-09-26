.class Ltop/niunaijun/blackbox/core/system/am/BroadcastManager$1;
.super Landroid/os/Handler;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/BroadcastManager$1;->this$0:Ltop/niunaijun/blackbox/core/system/am/BroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 43
    const-string v0, "BroadcastManager"

    .line 0
    const-string v1, "Timeout Receiver: "

    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_d

    return-void

    .line 47
    :cond_d
    :try_start_d
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ltop/niunaijun/blackbox/entity/am/PendingResultData;

    .line 48
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/entity/am/PendingResultData;->build()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception p0

    .line 51
    const-string p1, "Failed to finish timed-out broadcast"

    invoke-static {v0, p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
