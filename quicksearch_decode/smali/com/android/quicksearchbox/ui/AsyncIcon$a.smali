.class public Lcom/android/quicksearchbox/ui/AsyncIcon$a;
.super Ljava/lang/Object;
.source "AsyncIcon.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/android/quicksearchbox/Source;

.field public final synthetic c:Lcom/android/quicksearchbox/ui/AsyncIcon;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/AsyncIcon;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->c:Lcom/android/quicksearchbox/ui/AsyncIcon;

    iput-object p2, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->b:Lcom/android/quicksearchbox/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->c:Lcom/android/quicksearchbox/ui/AsyncIcon;

    iget-object v1, v1, Lcom/android/quicksearchbox/ui/AsyncIcon;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->c:Lcom/android/quicksearchbox/ui/AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->b:Lcom/android/quicksearchbox/Source;

    invoke-static {v0, p1, v1, v2}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/ui/AsyncIcon;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/AsyncIcon$a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
