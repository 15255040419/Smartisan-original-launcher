.class interface abstract Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FinalizerLoader"
.end annotation


# virtual methods
.method public abstract loadFinalizer()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method
