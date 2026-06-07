.class public Lsmartisanos/api/ConfigureRescourceSmt;
.super Ljava/lang/Object;
.source "ConfigureRescourceSmt.java"

.field private static final sInstance:Lsmartisanos/api/ConfigureRescourceSmt;

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/ConfigureRescourceSmt;

    invoke-direct {v0}, Lsmartisanos/api/ConfigureRescourceSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/ConfigureRescourceSmt;->sInstance:Lsmartisanos/api/ConfigureRescourceSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/ConfigureRescourceSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/ConfigureRescourceSmt;->sInstance:Lsmartisanos/api/ConfigureRescourceSmt;

    return-object v0
.end method

.method public isSameCustomTheme(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
