.class public Lsmartisanos/api/PackageManagerSmt;
.super Ljava/lang/Object;
.source "PackageManagerSmt.java"


# static fields
.field private static final sInstance:Lsmartisanos/api/PackageManagerSmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/PackageManagerSmt;

    invoke-direct {v0}, Lsmartisanos/api/PackageManagerSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/PackageManagerSmt;->sInstance:Lsmartisanos/api/PackageManagerSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/PackageManagerSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/PackageManagerSmt;->sInstance:Lsmartisanos/api/PackageManagerSmt;

    return-object v0
.end method


# virtual methods
.method public lockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public sessionUnlockAllPackages(Landroid/content/pm/PackageManager;)V
    .locals 0

    return-void
.end method

.method public sessionUnlockPackageLPw(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public unlockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unlockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
