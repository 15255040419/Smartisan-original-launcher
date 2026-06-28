.class Landroid/icu/text/CaseFoldTransliterator$2;
.super Ljava/lang/Object;
.source "CaseFoldTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CaseFoldTransliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/text/Transform<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/CaseFoldTransliterator;


# direct methods
.method constructor <init>(Landroid/icu/text/CaseFoldTransliterator;)V
    .locals 0

    .line 121
    iput-object p1, p0, Landroid/icu/text/CaseFoldTransliterator$2;->this$0:Landroid/icu/text/CaseFoldTransliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/CaseFoldTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    .line 124
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
