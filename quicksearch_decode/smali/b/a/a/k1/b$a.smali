.class public Lb/a/a/k1/b$a;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/android/quicksearchbox/preferences/OkCancelPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/k1/b;->handlePreference(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/k1/b;


# direct methods
.method public constructor <init>(Lb/a/a/k1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/k1/b$a;->a:Lb/a/a/k1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/a/k1/b$a;->a:Lb/a/a/k1/b;

    invoke-static {p1}, Lb/a/a/k1/b;->a(Lb/a/a/k1/b;)V

    :cond_0
    return-void
.end method
