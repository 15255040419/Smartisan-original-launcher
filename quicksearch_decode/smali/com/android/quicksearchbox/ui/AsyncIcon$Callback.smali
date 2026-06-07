.class public interface abstract Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;
.super Ljava/lang/Object;
.source "AsyncIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/AsyncIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract filterIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;
.end method
