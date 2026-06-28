.class final Lcom/google/common/hash/LongAddables$1;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/common/hash/LongAddable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/common/hash/LongAddable;
    .locals 0

    .line 36
    new-instance p0, Lcom/google/common/hash/LongAdder;

    invoke-direct {p0}, Lcom/google/common/hash/LongAdder;-><init>()V

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/google/common/hash/LongAddables$1;->get()Lcom/google/common/hash/LongAddable;

    move-result-object p0

    return-object p0
.end method
