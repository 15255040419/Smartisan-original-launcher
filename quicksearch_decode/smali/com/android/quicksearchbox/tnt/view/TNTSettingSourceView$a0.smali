.class public final Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a0;
.super Ld/q/c/e;
.source "TNTSettingSourceView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/q/c/e;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a0;->b:Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld/q/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a0;->b:Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;)Lb/a/a/l1/i/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/l1/i/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a0;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
