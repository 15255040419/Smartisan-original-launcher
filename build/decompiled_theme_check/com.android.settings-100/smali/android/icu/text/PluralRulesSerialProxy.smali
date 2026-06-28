.class Landroid/icu/text/PluralRulesSerialProxy;
.super Ljava/lang/Object;
.source "PluralRulesSerialProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private final data:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 26
    iget-object p0, p0, Landroid/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/text/PluralRules;->createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method
