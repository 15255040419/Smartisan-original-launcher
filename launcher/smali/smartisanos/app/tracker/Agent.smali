.class public Lsmartisanos/app/tracker/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# static fields
.field private static final sInstance:Lsmartisanos/app/tracker/Agent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/app/tracker/Agent;

    invoke-direct {v0}, Lsmartisanos/app/tracker/Agent;-><init>()V

    sput-object v0, Lsmartisanos/app/tracker/Agent;->sInstance:Lsmartisanos/app/tracker/Agent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/app/tracker/Agent;
    .locals 1

    sget-object v0, Lsmartisanos/app/tracker/Agent;->sInstance:Lsmartisanos/app/tracker/Agent;

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 0

    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
