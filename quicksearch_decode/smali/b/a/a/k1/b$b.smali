.class public Lb/a/a/k1/b$b;
.super Ljava/lang/Object;
.source "ClearShortcutsController.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/k1/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/k1/b;


# direct methods
.method public constructor <init>(Lb/a/a/k1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/k1/b$b;->a:Lb/a/a/k1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/b$b;->a:Lb/a/a/k1/b;

    invoke-static {v0}, Lb/a/a/k1/b;->b(Lb/a/a/k1/b;)Lcom/android/quicksearchbox/preferences/OkCancelPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/DialogPreference;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lb/a/a/k1/b$b;->a(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
