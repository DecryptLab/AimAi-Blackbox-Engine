.class public final Ltop/niunaijun/blackbox/utils/FacebookRedirect;
.super Ljava/lang/Object;
.source "FacebookRedirect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;
    }
.end annotation


# static fields
.field private static final CALLBACK_HOST_PREFIX:Ljava/lang/String; = "cct."

.field public static final CALLBACK_SCHEME:Ljava/lang/String; = "fbconnect"

.field public static final CUSTOM_TAB_ACTIVITY:Ljava/lang/String; = "com.facebook.CustomTabActivity"

.field public static final CUSTOM_TAB_EXTRA_URL:Ljava/lang/String; = "CustomTabMainActivity.extra_url"

.field public static final CUSTOM_TAB_MAIN_ACTIVITY:Ljava/lang/String; = "com.facebook.CustomTabMainActivity"

.field public static final CUSTOM_TAB_REDIRECT_ACTION:Ljava/lang/String; = "CustomTabActivity.action_customTabRedirect"

.field private static final FRAGMENT_AUTHORITY:Ljava/lang/String; = "callback"

.field private static final FRAGMENT_SCHEME:Ljava/lang/String; = "fragment"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final MAX_STATE_LENGTH:I = 0x2000

.field private static final MAX_URI_LENGTH:I = 0x8000

.field private static final PACKAGE_NAME:Ljava/util/regex/Pattern;

.field private static final REDIRECT_URI_PARAMETER:Ljava/lang/String; = "redirect_uri"

.field private static final STATE_PARAMETER:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "[A-Za-z][A-Za-z0-9_]*(?:\\.[A-Za-z][A-Za-z0-9_]*)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->PACKAGE_NAME:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFragmentParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 100
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_c
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "fragment"

    .line 105
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "callback"

    .line 106
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 109
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 58
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->isBounded(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    const-string v0, "fbconnect"

    .line 59
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 60
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4f

    .line 61
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_4f

    .line 65
    :cond_2b
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 66
    const-string v0, "cct."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_4f

    .line 69
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 70
    sget-object v0, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->PACKAGE_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4f

    return-object p0

    :cond_4f
    :goto_4f
    return-object v1
.end method

.method private static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 114
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getState(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 74
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->isBounded(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 77
    :cond_8
    const-string v0, "state"

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getFragmentParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    .line 79
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    :cond_14
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->isValidState(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v2

    :cond_1b
    return-object v1
.end method

.method private static isBounded(Landroid/net/Uri;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const v0, 0x8000

    if-gt p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static isCallbackForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 92
    :cond_d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidState(Ljava/lang/String;)Z
    .registers 2

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x2000

    if-gt p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static parseAuthorizationRequest(Landroid/content/Intent;)Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_58

    .line 33
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_58

    .line 36
    :cond_10
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 37
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->isBounded(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    .line 40
    :cond_1b
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return-object v0

    .line 44
    :cond_30
    const-string v1, "redirect_uri"

    invoke-static {p0, v1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getState(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    if-nez p0, :cond_43

    goto :goto_58

    .line 49
    :cond_43
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 50
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->getPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4e

    return-object v0

    .line 54
    :cond_4e
    new-instance v3, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1, p0, v0}, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltop/niunaijun/blackbox/utils/FacebookRedirect-IA;)V

    return-object v3

    :cond_58
    :goto_58
    return-object v0
.end method

###### Class top.niunaijun.blackbox.utils.FacebookRedirect.AuthorizationRequest (top.niunaijun.blackbox.utils.FacebookRedirect$AuthorizationRequest)
