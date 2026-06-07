.class public interface abstract Lcom/android/quicksearchbox/ShortcutRefresher;
.super Ljava/lang/Object;
.source "ShortcutRefresher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ShortcutRefresher$Listener;
    }
.end annotation


# virtual methods
.method public abstract markShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
.end method

.method public abstract refresh(Lcom/android/quicksearchbox/Suggestion;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract shouldRefresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z
.end method
