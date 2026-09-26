.class public final synthetic Ltop/niunaijun/blackbox/fake/frameworks/BlackManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;

    iput-object p2, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;

    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;->$r8$lambda$05o16GHppLwJUxdh8Ycgt85zlng(Ltop/niunaijun/blackbox/fake/frameworks/BlackManager;Landroid/os/IBinder;)V

    return-void
.end method
