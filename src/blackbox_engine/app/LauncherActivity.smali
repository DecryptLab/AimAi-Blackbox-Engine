.class public Ltop/niunaijun/blackbox/app/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field public static final KEY_INTENT:Ljava/lang/String; = "launch_intent"

.field public static final KEY_PKG:Ljava/lang/String; = "launch_pkg"

.field public static final KEY_USER_ID:Ljava/lang/String; = "launch_user_id"

.field public static final TAG:Ljava/lang/String; = "SplashScreen"


# instance fields
.field private isRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/app/LauncherActivity;->isRunning:Z

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/content/Intent;I)V
    .registers 3

    .line 58
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->startActivity(Landroid/content/Intent;I)Z

    return-void
.end method

.method public static launch(Landroid/content/Intent;I)V
    .registers 5

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ltop/niunaijun/blackbox/app/LauncherActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    const-string v1, "launch_intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    const-string v1, "launch_pkg"

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string p0, "launch_user_id"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_d

    .line 42
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/LauncherActivity;->finish()V

    return-void

    .line 45
    :cond_d
    const-string v0, "launch_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 46
    const-string v1, "launch_pkg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "launch_user_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 49
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_48

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not installed!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashScreen"

    invoke-static {v0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/LauncherActivity;->finish()V

    return-void

    .line 55
    :cond_48
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    sget v2, Ltop/niunaijun/blackbox/R$layout;->activity_launcher:I

    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/app/LauncherActivity;->setContentView(I)V

    .line 57
    sget v2, Ltop/niunaijun/blackbox/R$id;->iv_icon:I

    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/app/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Ltop/niunaijun/blackbox/app/LauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Ltop/niunaijun/blackbox/app/LauncherActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;I)V

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/app/LauncherActivity;->isRunning:Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/app/LauncherActivity;->isRunning:Z

    if-eqz v0, :cond_a

    .line 71
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/LauncherActivity;->finish()V

    :cond_a
    return-void
.end method

###### Class top.niunaijun.blackbox.app.LauncherActivity$$ExternalSyntheticLambda0 (top.niunaijun.blackbox.app.LauncherActivity$$ExternalSyntheticLambda0)
