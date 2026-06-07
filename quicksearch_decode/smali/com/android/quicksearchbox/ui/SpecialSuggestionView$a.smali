.class public Lcom/android/quicksearchbox/ui/SpecialSuggestionView$a;
.super Lb/a/a/m1/f;
.source "SpecialSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SpecialSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/quicksearchbox/ui/SpecialSuggestionView;

    const-string v1, "special"

    const v2, 0x7f0b0099

    invoke-direct {p0, v1, v0, v2, p1}, Lb/a/a/m1/f;-><init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lb/a/a/w;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lb/a/a/w;

    .line 3
    invoke-virtual {p0}, Lb/a/a/w;->f()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SpecialSuggestionView$a;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    return p1
.end method
