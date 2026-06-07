.class public Lsmartisanos/api/ViewSmt;
.super Ljava/lang/Object;
.source "ViewSmt.java"

.field private static final sInstance:Lsmartisanos/api/ViewSmt;

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/ViewSmt;

    invoke-direct {v0}, Lsmartisanos/api/ViewSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/ViewSmt;->sInstance:Lsmartisanos/api/ViewSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/ViewSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/ViewSmt;->sInstance:Lsmartisanos/api/ViewSmt;

    return-object v0
.end method

.method public addZoomStatusChangeListener(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public removeZoomStatusChangeListener(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
