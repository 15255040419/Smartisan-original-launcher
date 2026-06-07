.class public Lb/a/a/m1/g$a;
.super Landroid/os/Handler;
.source "SuggestionsAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/m1/g;


# direct methods
.method public constructor <init>(Lb/a/a/m1/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/g$a;->a:Lb/a/a/m1/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/a/m1/g$a;->a:Lb/a/a/m1/g;

    invoke-static {p1}, Lb/a/a/m1/g;->a(Lb/a/a/m1/g;)Lb/a/a/y0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lb/a/a/m1/g$a;->a:Lb/a/a/m1/g;

    invoke-static {p1}, Lb/a/a/m1/g;->a(Lb/a/a/m1/g;)Lb/a/a/y0;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/y0;->p()V

    .line 4
    iget-object p1, p0, Lb/a/a/m1/g$a;->a:Lb/a/a/m1/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/a/a/m1/g;->a(Lb/a/a/m1/g;Lb/a/a/y0;)Lb/a/a/y0;

    .line 5
    :cond_0
    iget-object p1, p0, Lb/a/a/m1/g$a;->a:Lb/a/a/m1/g;

    invoke-static {p1}, Lb/a/a/m1/g;->b(Lb/a/a/m1/g;)Lb/a/a/y0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/m1/g;->a(Lb/a/a/y0;)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lb/a/a/m1/g$a;->a:Lb/a/a/m1/g;

    invoke-static {v0, p1}, Lb/a/a/m1/g;->a(Lb/a/a/m1/g;Lcom/android/quicksearchbox/SuggestionCursor;)V

    :cond_1
    return-void
.end method
