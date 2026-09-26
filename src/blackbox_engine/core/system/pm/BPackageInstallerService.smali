.class public final Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;
.super Ljava/lang/Object;
.source "BPackageInstallerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BPackageInstallerService"

.field private static final sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;
    .registers 1

    .line 28
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    return-object v0
.end method


# virtual methods
.method public clearPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I
    .registers 8

    .line 73
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveUserExecutor;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveUserExecutor;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/installer/CreateUserExecutor;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/installer/CreateUserExecutor;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;

    .line 80
    invoke-interface {v1, p1, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;->exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I

    move-result v2

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uninstallPackageAsUser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " exec: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BPackageInstallerService"

    invoke-static {v3, v1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1b

    return v2

    :cond_54
    const/4 p0, 0x0

    return p0
.end method

.method public installPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I
    .registers 8

    .line 35
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/installer/CreateUserExecutor;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/installer/CreateUserExecutor;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/installer/CreatePackageExecutor;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/installer/CreatePackageExecutor;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;

    .line 44
    invoke-interface {v1, p1, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;->exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I

    move-result v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "installPackageAsUser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " exec: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BPackageInstallerService"

    invoke-static {v3, v1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_23

    return v2

    :cond_5c
    const/4 p0, 0x0

    return p0
.end method

.method public uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I
    .registers 8

    .line 54
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_f

    .line 57
    new-instance p2, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveAppExecutor;

    invoke-direct {p2}, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveAppExecutor;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_f
    new-instance p2, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveUserExecutor;

    invoke-direct {p2}, Ltop/niunaijun/blackbox/core/system/pm/installer/RemoveUserExecutor;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 62
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;

    .line 63
    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;->exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I

    move-result v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uninstallPackageAsUser: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " exec: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BPackageInstallerService"

    invoke-static {v2, v0}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1d

    return v1

    :cond_56
    const/4 p0, 0x0

    return p0
.end method
