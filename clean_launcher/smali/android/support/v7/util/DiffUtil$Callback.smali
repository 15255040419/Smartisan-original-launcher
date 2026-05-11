.class public abstract Landroid/support/v7/util/DiffUtil$Callback;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(II)Z
.end method

.method public abstract areItemsTheSame(II)Z
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getNewListSize()I
.end method

.method public abstract getOldListSize()I
.end method
