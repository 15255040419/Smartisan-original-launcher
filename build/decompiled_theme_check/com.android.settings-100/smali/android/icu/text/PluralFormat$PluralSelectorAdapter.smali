.class final Landroid/icu/text/PluralFormat$PluralSelectorAdapter;
.super Ljava/lang/Object;
.source "PluralFormat.java"

# interfaces
.implements Landroid/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PluralSelectorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/PluralFormat;


# direct methods
.method private constructor <init>(Landroid/icu/text/PluralFormat;)V
    .locals 0

    .line 540
    iput-object p1, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;)V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 0

    .line 543
    check-cast p1, Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 544
    iget-object p0, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    invoke-static {p0}, Landroid/icu/text/PluralFormat;->access$000(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
