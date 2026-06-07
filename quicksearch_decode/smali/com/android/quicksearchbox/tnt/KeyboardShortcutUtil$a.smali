.class public final Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;
.super Ld/q/c/e;
.source "KeyboardShortcutUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->f(Ljava/lang/String;)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;

    invoke-direct {v0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;->b:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld/q/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a(Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
