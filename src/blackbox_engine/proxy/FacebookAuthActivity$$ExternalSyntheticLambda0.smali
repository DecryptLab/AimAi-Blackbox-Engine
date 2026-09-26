.class public final synthetic Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;


# direct methods
.method public synthetic constructor <init>(Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity$$ExternalSyntheticLambda0;->f$0:Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;

    check-cast p1, Landroidx/browser/auth/AuthTabIntent$AuthResult;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;->$r8$lambda$Jcn2Xk6EiJ_gWyQH0Kb2EqXL9Ac(Ltop/niunaijun/blackbox/proxy/FacebookAuthActivity;Landroidx/browser/auth/AuthTabIntent$AuthResult;)V

    return-void
.end method
