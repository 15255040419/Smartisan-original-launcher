.class public Lsmartisanos/api/ActivityManagerSmt;
.super Ljava/lang/Object;
.source "ActivityManagerSmt.java"


# static fields
.field private static final sInstance:Lsmartisanos/api/ActivityManagerSmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/ActivityManagerSmt;

    invoke-direct {v0}, Lsmartisanos/api/ActivityManagerSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/ActivityManagerSmt;->sInstance:Lsmartisanos/api/ActivityManagerSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/ActivityManagerSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/ActivityManagerSmt;->sInstance:Lsmartisanos/api/ActivityManagerSmt;

    return-object v0
.end method


# virtual methods
.method public enableScreenAfterBoot(Landroid/app/ActivityManager;)V
    .locals 0

    return-void
.end method

.method public getPendingIntentForLockedPackage(Landroid/app/ActivityManager;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerActivityObserver(Landroid/app/ActivityManager;Landroid/app/IActivityObserver;)V
    .locals 0

    return-void
.end method
