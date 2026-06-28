.class public Lcom/android/settingslib/dream/DreamBackend;
.super Ljava/lang/Object;
.source "DreamBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;,
        Lcom/android/settingslib/dream/DreamBackend$WhenToDream;,
        Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EITHER:I = 0x2

.field public static final NEVER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DreamBackend"

.field public static final WHILE_CHARGING:I = 0x0

.field public static final WHILE_DOCKED:I = 0x1

.field private static sInstance:Lcom/android/settingslib/dream/DreamBackend;


# instance fields
.field private final mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mDreamsActivatedOnDockByDefault:Z

.field private final mDreamsActivatedOnSleepByDefault:Z

.field private final mDreamsEnabledByDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    const-string p1, "dreams"

    .line 102
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 103
    new-instance p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getDefaultDream()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;-><init>(Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    .line 104
    iget-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1120052

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1120051

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    .line 108
    iget-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1120050

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2

    if-eqz p0, :cond_1

    .line 290
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    .line 96
    :cond_0
    sget-object p0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method

.method private static getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 6

    const-string v0, "DreamBackend"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 296
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_c

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 304
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.service.dream"

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    :try_start_1
    const-string p0, "No android.service.dream meta-data"

    .line 306
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 326
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v1

    .line 309
    :cond_2
    :try_start_2
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 310
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 312
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 315
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dream"

    .line 316
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string p0, "Meta-data does not start with dream tag"

    .line 317
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 326
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    return-object v1

    .line 320
    :cond_5
    :try_start_3
    sget-object v4, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_6

    .line 326
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    move-object p0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v3, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 327
    :cond_7
    throw p0

    :catch_2
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_2
    if-eqz v2, :cond_8

    .line 326
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    :goto_3
    if-eqz p0, :cond_9

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_9
    if-eqz v3, :cond_a

    const/16 p0, 0x2f

    .line 332
    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_a

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    if-nez v3, :cond_b

    goto :goto_4

    .line 335
    :cond_b
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_c
    :goto_4
    return-object v1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getActiveDream()Landroid/content/ComponentName;
    .locals 3

    .line 248
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 251
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 252
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, p0, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "DreamBackend"

    const-string v2, "Failed to get active dream"

    .line 254
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getActiveDreamName()Ljava/lang/CharSequence;
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public getDefaultDream()Landroid/content/ComponentName;
    .locals 3

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 139
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "DreamBackend"

    const-string v2, "Failed to get default dream"

    .line 141
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getDreamInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getDreamInfos()"

    .line 113
    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.dreams.DreamService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 121
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-direct {v5}, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;-><init>()V

    .line 124
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-static {v4}, Lcom/android/settingslib/dream/DreamBackend;->getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    .line 127
    iget-object v6, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 128
    invoke-static {v1, v4}, Lcom/android/settingslib/dream/DreamBackend;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 129
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3
.end method

.method public getWhenToDreamSetting()I
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public isActivatedOnDock()Z
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    const-string v1, "screensaver_activate_on_dock"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isActivatedOnSleep()Z
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    const-string v1, "screensaver_activate_on_sleep"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    .line 199
    iget-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    const-string v1, "screensaver_enabled"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public launchSettings(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const-string v0, "launchSettings(%s)"

    .line 260
    invoke-static {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 261
    iget-object p0, p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget-object p2, p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public preview(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "preview(%s)"

    .line 268
    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {p0, v0}, Landroid/service/dreams/IDreamManager;->testDream(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to preview "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DreamBackend"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setActivatedOnDock(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setActivatedOnDock(%s)"

    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "screensaver_activate_on_dock"

    .line 214
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setActivatedOnSleep(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 223
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setActivatedOnSleep(%s)"

    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "screensaver_activate_on_sleep"

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setActiveDream(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "setActiveDream(%s)"

    .line 236
    invoke-static {v3, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-array v0, v0, [Landroid/content/ComponentName;

    aput-object p1, v0, v2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 241
    :cond_1
    invoke-interface {p0, v0}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set active dream to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DreamBackend"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setEnabled(%s)"

    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "screensaver_enabled"

    .line 204
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWhenToDream(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 173
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    :goto_1
    return-void
.end method

.method public startDreaming()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "startDreaming()"

    .line 279
    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p0, :cond_0

    return-void

    .line 283
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DreamBackend"

    const-string v1, "Failed to dream"

    .line 285
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
