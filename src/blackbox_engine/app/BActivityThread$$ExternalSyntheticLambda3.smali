.class public final synthetic Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Ltop/niunaijun/blackbox/app/BActivityThread$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    invoke-static {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->lambda$finishActivity$1(Landroid/os/IBinder;)V

    return-void
.end method
