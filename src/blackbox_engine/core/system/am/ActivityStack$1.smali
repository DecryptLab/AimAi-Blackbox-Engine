.class Ltop/niunaijun/blackbox/core/system/am/ActivityStack$1;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/am/ActivityStack;Landroid/os/Looper;)V
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

    .line 64
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack$1;->this$0:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_14

    .line 69
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eqz p1, :cond_14

    .line 71
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack$1;->this$0:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->-$$Nest$fgetmLaunchingActivities(Ltop/niunaijun/blackbox/core/system/am/ActivityStack;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_14
    :goto_14
    return-void
.end method
