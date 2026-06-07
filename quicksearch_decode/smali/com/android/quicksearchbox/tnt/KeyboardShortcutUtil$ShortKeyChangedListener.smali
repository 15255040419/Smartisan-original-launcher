.class public interface abstract Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;
.super Ljava/lang/Object;
.source "KeyboardShortcutUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShortKeyChangedListener"
.end annotation


# virtual methods
.method public abstract onCancel(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFail()V
.end method

.method public abstract onProgress(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldListen()Z
.end method
