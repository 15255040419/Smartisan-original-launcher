.class public Lsmartisanos/api/ApplicationInfoSmt;
.super Ljava/lang/Object;
.source "ApplicationInfoSmt.java"


# static fields
.field private static final sInstance:Lsmartisanos/api/ApplicationInfoSmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/ApplicationInfoSmt;

    invoke-direct {v0}, Lsmartisanos/api/ApplicationInfoSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/ApplicationInfoSmt;->sInstance:Lsmartisanos/api/ApplicationInfoSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/ApplicationInfoSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/ApplicationInfoSmt;->sInstance:Lsmartisanos/api/ApplicationInfoSmt;

    return-object v0
.end method


# virtual methods
.method public getSmartisanFlag(Landroid/content/pm/ApplicationInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
