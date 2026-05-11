.class public Lsmartisanos/api/MotionEventSmt;
.super Ljava/lang/Object;
.source "MotionEventSmt.java"


# static fields
.field private static final sInstance:Lsmartisanos/api/MotionEventSmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/MotionEventSmt;

    invoke-direct {v0}, Lsmartisanos/api/MotionEventSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/MotionEventSmt;->sInstance:Lsmartisanos/api/MotionEventSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/MotionEventSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/MotionEventSmt;->sInstance:Lsmartisanos/api/MotionEventSmt;

    return-object v0
.end method


# virtual methods
.method public isGeneratedGesture(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
