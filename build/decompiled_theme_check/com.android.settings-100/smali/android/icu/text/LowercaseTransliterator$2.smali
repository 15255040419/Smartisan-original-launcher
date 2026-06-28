.class Landroid/icu/text/LowercaseTransliterator$2;
.super Ljava/lang/Object;
.source "LowercaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/LowercaseTransliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
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
.field final synthetic this$0:Landroid/icu/text/LowercaseTransliterator;


# direct methods
.method constructor <init>(Landroid/icu/text/LowercaseTransliterator;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator$2;->this$0:Landroid/icu/text/LowercaseTransliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/LowercaseTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/icu/text/LowercaseTransliterator$2;->this$0:Landroid/icu/text/LowercaseTransliterator;

    invoke-static {p0}, Landroid/icu/text/LowercaseTransliterator;->access$000(Landroid/icu/text/LowercaseTransliterator;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
