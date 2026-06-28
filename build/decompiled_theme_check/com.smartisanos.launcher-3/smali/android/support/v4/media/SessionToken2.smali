.class public final Landroid/support/v4/media/SessionToken2;
.super Ljava/lang/Object;
.source "SessionToken2.java"


# static fields
.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android.media.token.package_name"

.field static final KEY_SERVICE_NAME:Ljava/lang/String; = "android.media.token.service_name"

.field static final KEY_SESSION_BINDER:Ljava/lang/String; = "android.media.token.session_binder"

.field static final KEY_SESSION_ID:Ljava/lang/String; = "android.media.token.session_id"

.field static final KEY_TOKEN_LEGACY:Ljava/lang/String; = "android.media.token.LEGACY"

.field static final KEY_TYPE:Ljava/lang/String; = "android.media.token.type"

.field static final KEY_UID:Ljava/lang/String; = "android.media.token.uid"

.field private static final TAG:Ljava/lang/String; = "SessionToken2"

.field public static final TYPE_LIBRARY_SERVICE:I = 0x2

.field public static final TYPE_SESSION:I = 0x0

.field static final TYPE_SESSION_LEGACY:I = 0x64

.field public static final TYPE_SESSION_SERVICE:I = 0x1

.field static final UID_UNKNOWN:I = -0x1

.field private static final WAIT_TIME_MS_FOR_SESSION_READY:J = 0x12cL


# instance fields
.field private final mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/media/SessionToken2ImplBase;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    return-void
.end method

.method public static createSessionToken2(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/util/concurrent/Executor;Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;)V
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Landroid/support/v4/media/SessionToken2$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/media/SessionToken2$1;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "android.media.token.type"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Landroid/support/v4/media/SessionToken2;

    invoke-static {p0}, Landroid/support/v4/media/SessionToken2ImplLegacy;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2ImplLegacy;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Landroid/support/v4/media/SessionToken2;

    invoke-static {p0}, Landroid/support/v4/media/SessionToken2ImplBase;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2ImplBase;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    return-object v0
.end method

.method public static getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.media.session"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v0}, Landroid/support/v4/media/SessionToken2;->getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/SessionToken2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/media/SessionToken2;

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    iget-object p1, p1, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->getBinder()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->getServiceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->getType()I

    move-result p0

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->getUid()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isLegacySession()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    instance-of p0, p0, Landroid/support/v4/media/SessionToken2ImplLegacy;

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2;->mImpl:Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
