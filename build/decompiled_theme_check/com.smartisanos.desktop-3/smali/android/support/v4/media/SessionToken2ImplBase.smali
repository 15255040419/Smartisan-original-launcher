.class final Landroid/support/v4/media/SessionToken2ImplBase;
.super Ljava/lang/Object;
.source "SessionToken2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mISession2:Landroid/support/v4/media/IMediaSession2;

.field private final mPackageName:Ljava/lang/String;

.field private final mServiceName:Ljava/lang/String;

.field private final mSessionId:Ljava/lang/String;

.field private final mType:I

.field private final mUid:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    .line 21
    iput p2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    .line 22
    iput-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 24
    iget p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 25
    iput-object p5, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 4
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 7
    :try_start_0
    iget-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_0
    :goto_0
    iput p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    const-string p3, "android.media.MediaLibraryService2"

    .line 10
    invoke-static {p1, p3, p2}, Landroid/support/v4/media/SessionToken2ImplBase;->getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 11
    iput-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    goto :goto_1

    :cond_1
    const-string p3, "android.media.MediaSessionService2"

    .line 13
    invoke-static {p1, p3, p2}, Landroid/support/v4/media/SessionToken2ImplBase;->getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    .line 15
    :goto_1
    iget-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    return-void

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "service "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t implement"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " session service nor library service. Use service\'s full name."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "serviceComponent shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2ImplBase;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.token.uid"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, -0x1

    const-string v1, "android.media.token.type"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "android.media.token.package_name"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.media.token.service_name"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.media.token.session_id"

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.media.token.session_binder"

    .line 6
    invoke-static {p0, v0}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaSession2;

    move-result-object v7

    if-eqz v3, :cond_4

    const/4 p0, 0x1

    if-eq v3, p0, :cond_2

    const/4 p0, 0x2

    if-ne v3, p0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session service needs service name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz v7, :cond_6

    .line 10
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v6, :cond_5

    .line 11
    new-instance p0, Landroid/support/v4/media/SessionToken2ImplBase;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    return-object p0

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Package name nor ID cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token for session, binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    .line 4
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
    invoke-static {v0}, Landroid/support/v4/media/SessionToken2ImplBase;->getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

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

.method private sessionBinderEquals(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/IMediaSession2;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/SessionToken2ImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/media/SessionToken2ImplBase;

    .line 3
    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    iget v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    iget v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    iget-object p1, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    .line 7
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/SessionToken2ImplBase;->sessionBinderEquals(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/IMediaSession2;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    iget v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v3, p0

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    const-string v2, "android.media.token.uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    const-string v2, "android.media.token.package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    const-string v2, "android.media.token.service_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    const-string v2, "android.media.token.session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    const-string v2, "android.media.token.type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v1, "android.media.token.session_binder"

    invoke-static {v0, v1, p0}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionToken {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IMediaSession2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
